cask "manuscripts" do
  version "1.3.3,209"
  sha256 "b528a1f4c0be56925a479207c2fa840d524a759e2d02a607fe2d11f53e01c25a"

  # hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4/ was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4/app_versions/#{version.after_comma}?format=zip"
  appcast "https://rink.hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4"
  name "Manuscripts"
  homepage "https://www.manuscriptsapp.com/"

  depends_on macos: ">= :yosemite"

  app "Manuscripts.app"
end
