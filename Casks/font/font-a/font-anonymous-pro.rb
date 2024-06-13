cask "font-anonymous-pro" do
  version "1.002"
  sha256 "6d165fd08fe2827f38656c26f644eb1f5d6a0f1cb067cb758c7f295a333eb112"

  url "https://www.marksimonson.com/assets/content/fonts/AnonymousPro-#{version.dots_to_underscores}.zip"
  name "Anonymous Pro"
  homepage "https://www.marksimonson.com/fonts/view/anonymous-pro"

  livecheck do
    url :homepage
    regex(/href=.*?AnonymousPro[._-]v?(\d+(?:[._]\d+)+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.first.tr("_", ".") }
    end
  end

  font "AnonymousPro-#{version}.001/Anonymous Pro B.ttf"
  font "AnonymousPro-#{version}.001/Anonymous Pro BI.ttf"
  font "AnonymousPro-#{version}.001/Anonymous Pro I.ttf"
  font "AnonymousPro-#{version}.001/Anonymous Pro.ttf"

  # No zap stanza required
end
