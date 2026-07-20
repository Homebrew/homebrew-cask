cask "starnet2" do
  version "02,2023"
  sha256 "d566cd0a59d15894a3b027354812707b4408ca0917275af36602520f4ddec918"

  url "https://www.starnetastro.com/wp-content/uploads/#{version.csv.second}/#{version.csv.first}/StarNet2T_MacOS.zip"
  name "starnet2"
  desc "Removes stars from astrophotography images using ML models"
  homepage "https://www.starnetastro.com/"

  livecheck do
    url "https://www.starnetastro.com/experimental/"
    regex(%r{uploads/(\d+)/(\d+)/StarNet2T_MacOS\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos
  depends_on arch: :arm64

  installer script: {
    executable: "StarNet2T_MacOS/installer.sh",
    sudo:       true,
  }

  generated_script "StarNet2T_MacOS/installer.sh", content: <<~EOS
    #!/bin/sh

    chmod 0755 "$(dirname "$0")"/lib/*
    mkdir -p /usr/local/lib
    cp "$(dirname "$0")"/lib/* /usr/local/lib/
  EOS

  command_wrapper "StarNet2T_MacOS/shim.sh", target: "starnet2", content: <<~EOS
    #!/bin/sh

    cleanup() {
      rm -f StarNet2_weights.pt
    }
    trap cleanup RETURN EXIT SIGINT SIGKILL

    ln -sf "#{staged_path}/StarNet2T_MacOS/StarNet2_weights.pt" .
    "#{staged_path}/StarNet2T_MacOS/starnet2" "$@"
  EOS

  generated_script "StarNet2T_MacOS/uninstaller.sh", content: <<~EOS
    #!/bin/sh

    for lib in "$(dirname "$0")"/lib/*; do
      test -e "${lib}" || continue
      rm -f "/usr/local/lib/$(basename "${lib}")"
    done
  EOS

  uninstall script: {
    executable: "StarNet2T_MacOS/uninstaller.sh",
    sudo:       true,
  }

  # No zap stanza required

  caveats do
    files_in_usr_local
  end
end
