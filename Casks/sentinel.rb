cask "sentinel" do
  version "0.16.1"
  sha256 "77c612347f024ac0fc1e9a686dcfabd8c130d5a7702677f87fdb4c7fe46ec943"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  appcast "https://docs.hashicorp.com/sentinel/downloads/"
  name "Sentinel"
  homepage "https://docs.hashicorp.com/sentinel/"

  binary "sentinel"
end
