cask "qtvlm" do
  version "5.9.14.p1.3,270"
  sha256 "f0035418df85822276ac803a363519d0524013a0d4cb8fb369683df64301e419"

  url "https://www.meltemus.com/index.php/en/download/send/3-mac-os/#{version.after_comma}-qtvlm-#{version.before_comma.dots_to_hyphens}"
  appcast "https://www.meltemus.com/index.php/en/download/category/3-mac-os",
          must_contain: version.before_comma
  name "qtvlm"
  homepage "https://www.meltemus.com/index.php/en/"

  depends_on macos: ">= :sierra"

  app "qtVlm"

  zap trash: "~/Library/Saved Application State/com.meltemus.qtVlm.savedState"
end
