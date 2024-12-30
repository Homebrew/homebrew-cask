cask "netventory" do
  version "0.3.0n"
  sha256 arm:   "1046a11b9a7420120ce1ca9b0060f10b25028a8b3d3178bd6ebbf6842d34d825",
         intel: "fea855f421a632353e6e7e3e4ea304044bea49613b74d45f2621080f046c056b"

  on_arm do
    url "https://github.com/ramborogers/netventory/releases/download/#{version}/netventory-darwin-arm64",
        verified: "github.com/ramborogers/netventory/"

    binary "#{staged_path}/netventory-darwin-arm64", target: "netventory"
  end
  on_intel do
    url "https://github.com/ramborogers/netventory/releases/download/#{version}/netventory-darwin-amd64",
        verified: "github.com/ramborogers/netventory/"

    binary "#{staged_path}/netventory-darwin-amd64", target: "netventory"
  end

  name "Netventory"
  desc "Network inventory and discovery tool"
  homepage "https://github.com/ramborogers/netventory"

  postflight do
    # Remove quarantine attribute to allow execution of unsigned binary
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/netventory-darwin-#{Hardware::CPU.arch}"]
  end

  zap trash: "~/.netventory"
end
