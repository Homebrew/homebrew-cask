cask "openphone" do
  version "2.0.18"
  sha256 "779d361812a9ef7f9456f6d164570dcec0c57e725ea8af78a8b92f7cd7c9128c"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
