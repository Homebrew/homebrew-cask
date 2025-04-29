cask "owlplug" do
  version "1.29.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://github.com/DropSnorz/OwlPlug/releases/download/#{version}/OwlPlug-#{version}.dmg"
  name "OwlPlug"
  desc "Audio plugin manager"
  homepage "https://github.com/DropSnorz/OwlPlug"

  app "OwlPlug.app"
end
