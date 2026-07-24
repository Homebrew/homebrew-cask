cask "clipkit" do
  version "2.1.0"
  sha256 "3ff93fc50ef1842724cd32148f6567beccc7edaae0c548ddcdf2da3ca7e3512a"

  url "https://github.com/arrrev/clipkit/releases/download/v#{version}/ClipKit-#{version}.zip"
  name "ClipKit"
  desc "Clipboard manager with history, text transforms, and global hotkeys"
  homepage "https://github.com/arrrev/clipkit"

  app "ClipKit.app"

  zap trash: "~/.clipkit"
end
