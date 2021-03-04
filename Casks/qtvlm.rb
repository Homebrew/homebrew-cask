cask "qtvlm" do
  version "5.9.14-p2-3,277"
  sha256 "2e0a21a21024559adbc179bca0c9a2437bded46ed99e6f085fb30e0f664718c4"

  url "https://www.meltemus.com/index.php/en/download/send/3-mac-os/#{version.after_comma}-qtvlm-#{version.before_comma.dots_to_hyphens}"
  appcast "https://www.meltemus.com/index.php/en/download/category/3-mac-os",
          must_contain: version.major_minor_patch
  name "qtvlm"
  desc "Navigation and weather routing software"
  homepage "https://www.meltemus.com/index.php/en/"

  depends_on macos: ">= :sierra"

  app "qtVlm"

  zap trash: "~/Library/Saved Application State/com.meltemus.qtVlm.savedState"
end
