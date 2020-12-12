cask "qlc-plus" do
  version "4.12.3"
  sha256 "31c0779de17719bb4b6acb6e14ffd83f3475baec5f3e75911d6ea55943e33988"

  url "https://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  appcast "https://github.com/mcallegari/qlcplus/releases.atom"
  name "Q Light Controller+"
  homepage "https://qlcplus.org/"

  app "QLC+.app"
end
