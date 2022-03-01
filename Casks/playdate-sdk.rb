cask "playdate-sdk" do
  version "1.9.0"
  sha256 "c61e3ba45b65034f89690e5ad22b2ebd24e03df6d376b72e0fae62b003d104ff"

  url "https://download-keycdn.panic.com/playdate_sdk/PlaydateSDK-#{version}.pkg",
      verified: "panic.com"
  name "Playdate SDK"
  desc "Playdate Lua and C APIs, docs and SSimulator for local development"
  homepage "https://play.date/dev/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{<span class="actionInfo">\s*Playdate SDK (\d+.\d+.\d+)\s*</span>}i)
          .map { |match| match&.first }
    end
  end

  depends_on macos: ">= :catalina"

  pkg "PlaydateSDK-#{version}.pkg"

  uninstall pkgutil: "date.play.sdk"
end
