cask "macgesture" do
  version "2.2.5"
  sha256 "0fb8b9c6d502f7d70bc3a929b2f5fb73b4f0dac596f45695130af4fb7f85f1df"

  url "https://github.com/MacGesture/MacGesture/releases/download/#{version}/MacGesture-#{version}.zip"
  appcast "https://github.com/MacGesture/MacGesture/releases.atom"
  name "MacGesture"
  desc "Utility to set up global mouse gestures"
  homepage "https://github.com/MacGesture/MacGesture"

  app "MacGesture.app"
end
