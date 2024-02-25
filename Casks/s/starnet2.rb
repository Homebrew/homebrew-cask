cask "starnet2" do
  version "02,2023"
  sha256 "d566cd0a59d15894a3b027354812707b4408ca0917275af36602520f4ddec918"

  url "https://www.starnetastro.com/wp-content/uploads/#{version.csv.second}/#{version.csv.first}/StarNet2T_MacOS.zip"
  name "starnet2"
  desc "Removes stars from astrophotography images using ML models"
  homepage "https://www.starnetastro.com/"

  livecheck do
    url "https://www.starnetastro.com/experimental/"
    regex(%r{uploads/(\d+)/(\d+)/StarNet2T_MacOS.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on arch: :arm64

  bin_path = "#{staged_path}/StarNet2T_MacOS"
  installer = "#{bin_path}/installer.sh"
  shim = "#{bin_path}/shim.sh"

  installer script: {
    executable: installer,
    sudo:       true,
  }
  binary shim, target: "starnet2"

  preflight do
    File.write installer, <<~EOS
      #!/bin/sh

      chmod 0755 #{bin_path}/lib/*
      mkdir -p /usr/local/lib
      cp #{bin_path}/lib/* /usr/local/lib/
    EOS

    File.write shim, <<~EOS
      #!/bin/sh

      # delete the symlink on process exit
      cleanup() {
        rm -f StarNet2_weights.pt
      }
      trap cleanup RETURN EXIT SIGINT SIGKILL

      # the binary hardcodes the weights path so we have to symlink it to the CWD
      ln -sf #{bin_path}/StarNet2_weights.pt .
      #{bin_path}/starnet2 $@
    EOS
  end

  uninstaller = "#{bin_path}/uninstaller.sh"
  uninstall_preflight do
    libs = Dir.children("#{caskroom_path}/#{version}/StarNet2T_MacOS/lib").map { |lib| "/usr/local/lib/#{lib}" }
    File.write uninstaller, <<~EOS
      rm #{libs.join(" ")}
    EOS
  end

  uninstall script: {
    executable: uninstaller,
    sudo:       true,
  }

  # No zap stanza required

  caveats do
    files_in_usr_local
  end
end
