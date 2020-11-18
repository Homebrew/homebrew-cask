cask "marvel" do
  version "10.5"
  sha256 "8bb11ab765dcfdc1a514d87b728f235e647d97364113ca56376e42499718ad98"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  desc "Prototyping, testing and handoff tools"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
