cask "stringz" do
  version "0.4.0"
  sha256 "82de9f176d08356c222df4f191233213cb5661a8d85578be8a506ce5bf86955a"

  url "https://github.com/mohakapt/Stringz/releases/download/v#{version}/Stringz-#{version}.dmg"
  appcast "https://github.com/mohakapt/Stringz/releases.atom"
  name "Stringz"
  desc "Stringz is a lightweight yet powerful editor that makes translating your iOS app easy and fast."
  homepage "https://github.com/mohakapt/Stringz"

  app "Stringz.app"
end
