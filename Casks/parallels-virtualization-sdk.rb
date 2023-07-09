cask "parallels-virtualization-sdk" do
  version "18.3.2-53621"
  sha256 "fb7fa5f3c9f4387791ea5cec3e7c2e2da95588f6487a39eb670c85e91d47e401"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  livecheck do
    url "https://kb.parallels.com/129060"
    regex(/<h2[^>]*?>[^<]*?(\d+(?:\.\d+)+)(?:\s*|&nbsp;)\((\d+)\)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}-#{match[1]}" }
    end
  end

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"

  # No zap stanza required
end
