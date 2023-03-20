cask "starnet-plus-plus" do
  version "2,03,2022"
  sha256 "35f0c11f49a1bde466e317565e75beb32b57ebfead85379c23cc3953c1c42fc7"

  url "https://starnetastro.com/wp-content/uploads/#{version.csv.third}/#{version.csv.second}/StarNetv#{version.csv.first}CLI_MacOS.zip"
  name "starnet++"
  desc "Removes stars from astrophotography images using ML models"
  homepage "https://www.starnetastro.com/"

  livecheck do
    url "https://www.starnetastro.com/download/"
    strategy :page_match do |page|
      match = page.match(%r{uploads/(\d+)/(\d+)/StarNetv?(\d+(?:\.\d+)*)CLI[._-]MacOS.zip}i)
      next if match.blank?

      "#{match[3]},#{match[2]},#{match[1]}"
    end
  end

  bin_path = "#{staged_path}/StarNetv#{version.csv.first}CLI_MacOS"
  bins = [
    "starnet++",
    "libtensorflow.2.dylib",
    "libtensorflow_framework.2.dylib",
  ]

  shimscript = "#{staged_path}/starnet_wrapper.sh"
  binary shimscript, target: "starnet++"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh

      # delete the symlink on process exit
      cleanup() {
        rm -f starnet#{version.csv.first}_weights.pb
      }
      trap cleanup RETURN EXIT SIGINT SIGKILL

      # the binary hardcodes the weights path so we have to symlink it to the CWD
      ln -sf "#{bin_path}/starnet#{version.csv.first}_weights.pb" .

      # define a load path since the libs are not in the same dir as the bin
      DYLD_LIBRARY_PATH=#{bin_path} command #{bin_path}/starnet++ $@
    EOS
  end

  postflight do
    set_permissions "#{bin_path}/starnet++", "0755"
    bins.each do |bin|
      system_command "xattr", args: ["-c", "#{bin_path}/#{bin}"]
    end
  end

  caveats do
    requires_rosetta
  end
end
