cask "bonitastudiocommunity" do
  version "2021.2-u0"
  sha256 "28a753a453e4085a706b23b5cf323f7bdd39d073a2974ecbd57e58e3c5d06016"

  url "https://github.com/bonitasoft/bonita-platform-releases/releases/download/#{version}/BonitaStudioCommunity-#{version}-x86_64.dmg",
      verified: "github.com/bonitasoft/bonita-platform-releases/"
  name "Bonita Studio Community Edition"
  desc "Business process automation and optimization"
  homepage "https://www.bonitasoft.com/downloads"

  livecheck do
    url "https://go.bonitasoft.com/l/148721/2021-09-24/5rq47g"
    strategy :header_match
    regex(/filename=BonitaStudioCommunity[._-]v?(\d+(?:\.\d+)+(?:[a-z\d_-]+))[._-]x86_64\.dmg/i)
  end

  installer script: {
    executable: "#{staged_path}/BonitaStudioCommunity-#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
  }

  uninstall quit:   "org.bonitasoft.studio.product",
            delete: "/Applications/BonitaStudioCommunity-#{version}.app"

  zap trash: [
    "~/Library/Preferences/org.bonitasoft.studio.product.plist",
    "/Library/Caches/org.bonitasoft.studio.product",
  ]
end
