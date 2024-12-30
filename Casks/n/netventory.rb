cask "netventory" do
  version "0.3.0n"

  on_arm do
    sha256 "1046a11b9a7420120ce1ca9b0060f10b25028a8b3d3178bd6ebbf6842d34d825"

    url "https://github.com/ramborogers/netventory/releases/download/#{version}/netventory-darwin-arm64"

    binary "netventory-darwin-arm64", target: "netventory"
  end
  on_intel do
    sha256 "fea855f421a632353e6e7e3e4ea304044bea49613b74d45f2621080f046c056b"

    url "https://github.com/ramborogers/netventory/releases/download/#{version}/netventory-darwin-amd64"

    binary "netventory-darwin-amd64", target: "netventory"
  end

  name "Netventory"
  desc "Network inventory and discovery tool"
  homepage "https://github.com/ramborogers/netventory"

  # Optional: Test that the binary works
  postflight do
    system_command "#{staged_path}/netventory", args: ["--version"], print_stderr: false
  end

  # Uninstallation cleanup if required
  zap trash: "~/Library/Preferences/netventory"
end
