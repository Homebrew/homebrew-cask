cask "jet" do
  version "2.11.0"
  sha256 "90c4f04fc4e4ecb62bdf24b95cb6fa9bd2fb999a7a3cd6aec12672fd86c73239"

  # codeship-jet-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://codeship-jet-releases.s3.amazonaws.com/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  appcast "https://documentation.codeship.com/pro/jet-cli/release-notes/"
  name "Codeship Jet"
  homepage "https://documentation.codeship.com/pro/builds-and-configuration/cli/"

  binary "jet"
end
