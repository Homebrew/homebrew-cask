cask "binocs" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.2"
  sha256 arm:   "183181127923af570a81558f8b26babcbe47e9fd42d2ff46409526156110b108",
         intel: "0a66664c8255c0e87d1a38420e13c1a0ee038c0ae64eace4cc4f731f033ca4a7"

  url "https://download.binocs.sh/binocs_#{version}_darwin_#{arch}.gz"
  name "Binocs"
  desc "CLI-first uptime and performance monitoring tool for websites, apps and APIs"
  homepage "https://binocs.sh/"

  livecheck do
    url "https://download.binocs.sh/VERSION"
    regex(/v(\d+(?:\.\d+)+)/)
  end

  binary "binocs"

  zap trash: "~/.binocs"
end
