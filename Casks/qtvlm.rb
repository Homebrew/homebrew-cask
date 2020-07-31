cask "qtvlm" do
  version "5.9.10,217"
  sha256 "ed38ccd9565344ead60f46b59d4f1f4d4290e13a43f84eb730d31d8c1eca6523"

  url "https://www.meltemus.com/index.php/en/download/send/3-mac-os/#{version.after_comma}-qtvlm-#{version.before_comma.dots_to_hyphens}-2"
  appcast "https://www.meltemus.com/index.php/en/download/category/3-mac-os",
          must_contain: version.before_comma
  name "qtvlm"
  homepage "https://www.meltemus.com/index.php/en/"

  depends_on macos: ">= :sierra"

  app "qtVlm"

  zap trash: "~/Library/Saved Application State/com.meltemus.qtVlm.savedState"
end
