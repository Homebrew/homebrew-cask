cask "rode-unify" do
  version "1.3.43"
  sha256 :no_check

  url "https://update.rode.com/unify_new/macos/RODE_UNIFY_MACOS.zip"
  name "RØDE Unify"
  desc "Virtual mixing software"
  homepage "https://rode.com/en/apps/unify"

  livecheck do
    url "https://update.rode.com/rode-devices-manifest.json"
    strategy :json do |json|
      json.dig("rode-unify-new-manifest", "macos", "main-version", "update-version")
    end
  end

  pkg "RØDE Unify (#{version}).pkg"

  uninstall pkgutil: "com.rodeunify.installer"

  zap trash: [
    "~/Library/Caches/com.rode.rodeunify",
    "~/Library/HTTPStorages/com.rode.rodeunify",
    "~/Library/Saved Application State/com.rode.rodeunify.savedState",
  ]
end
