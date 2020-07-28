cask "sentinel" do
  version "0.15.6"
  sha256 "8b249304f5897dbf4314257a5f4cd28e1fb382524e68f6681cb1c254a72e9be2"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  appcast "https://docs.hashicorp.com/sentinel/downloads/"
  name "Sentinel"
  homepage "https://docs.hashicorp.com/sentinel/"

  binary "sentinel"
end
