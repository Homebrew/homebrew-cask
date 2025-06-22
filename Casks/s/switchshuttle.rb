cask "switchshuttle" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "95bf3af6e156007dfafbfb0fa4fdf5da04c0e4320ff0e307cdbad344cf6f5253",
         intel: "404246314779e0c38c6796e90a02feff2763aaa86753862c849ed1e20a2cf0d5"

  url "https://github.com/s00d/switchshuttle/releases/download/app-v#{version}/switch-shuttle_#{version}_#{arch}.dmg"
  name "SwitchShuttle"
  desc "Cross-platform terminal command manager"
  homepage "https://github.com/s00d/switchshuttle"

  depends_on macos: ">= :high_sierra"

  app "switch-shuttle.app"

  postflight do
    system_command "chmod", args: ["+x", "/Applications/switch-shuttle.app"]
    system_command "xattr", args: ["-cr", "/Applications/switch-shuttle.app"]
    system_command "codesign", args: ["--force", "--deep", "--sign", "-", "/Applications/switch-shuttle.app"]
  end
end
