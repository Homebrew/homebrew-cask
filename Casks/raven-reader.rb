cask "raven-reader" do
  version "1.0.0"
  sha256 "7e77c6546c3d1d08490ec22709d77c51c6621b5d0597af07778c6da488ad1b21"

  # download.helloefficiency.com/ravenreader/ was verified as official when first introduced to the cask
  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
