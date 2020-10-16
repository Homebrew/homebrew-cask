cask "melodics" do
  version "2.1.5134"
  sha256 "cf5800a8f633e47ec939a335f47f90aa32197a42c3ec3e0599b54ef8a6a487a6"

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name "Melodics"
  homepage "https://melodics.com/"

  app "Melodics.app"
end
