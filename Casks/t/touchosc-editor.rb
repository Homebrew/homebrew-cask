cask "touchosc-editor" do
  version "1.8.9"
  sha256 "018e651a6053e993b0017dd396f52a68de34545b25d2d4775d561b6527a9a1df"

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-macos.zip"
  name "TouchOSC Editor"
  desc "Modular touch control surface editor for OSC & MIDI"
  homepage "https://hexler.net/touchosc-mk1"

  livecheck do
    url :homepage
    regex(%r{href=.*?/touchosc-editor-(\d+(?:\.\d+)*)-macos\.zip}i)
  end

  app "touchosc-editor-#{version}-macos/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-macos/layouts",
           target: Pathname.new(File.expand_path("~")).join("Library/Application Support/TouchOSCEditor/layouts")

  zap trash: "~/Library/*/*TouchOSCEditor*"
end
