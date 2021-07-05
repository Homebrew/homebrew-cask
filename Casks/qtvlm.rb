cask "qtvlm" do
  version "5.10.1,298"
  sha256 "ac89ae7b2b8af1f8b0118665e429c4e40365aead3397b2bb565086b9ebf7bd8b"

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
