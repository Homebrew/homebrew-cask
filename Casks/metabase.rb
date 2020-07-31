cask "metabase" do
  version "0.36.1"
  sha256 "2c44b532a9d5f605e9a4d1c2bc9c3b456b6633a87b08628136b1832d172216c4"

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
  name "Metabase"
  homepage "https://www.metabase.com/"

  app "Metabase.app"
end
