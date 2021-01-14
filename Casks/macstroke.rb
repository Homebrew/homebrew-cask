cask "macstroke" do
  version "2.0.0"
  sha256 "14c4497aa0f1ec2c18535b9b0d6b069f9bf473b0a1bd7dd183e3bc8b15a92c12"

  url "https://github.com/mtjo/MacStroke/releases/download/#{version}/MacStroke.zip"
  name "MacStroke"
  desc "Configurable global mouse gesture for macOS. macOS上一款高度可配置的全局鼠标手势软件。"
  homepage "https://github.com/mtjo/MacStroke"
  appcast "https://github.com/mtjo/MacStroke/blob/release/AppCast.xml"

  app "MacStroke.app"
end
