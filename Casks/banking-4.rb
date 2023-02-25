cask "banking-4" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "8.0.1,8445"
  sha256 :no_check

  url "https://subsembly.com/download/MacBanking4.pkg"
  name "Banking 4"
  desc "German accounting software"
  homepage "https://subsembly.com/banking4.html"

  livecheck do
    url "https://subsembly.com/banking4-macos-updates.php"
    strategy :page_match do |page|
      page.scan(/<h\d[^>]*>\s*(\d+(?:\.\d+)+)\.(\d{3,})/i)
          .map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  pkg "MacBanking4.pkg"

  uninstall pkgutil: "com.subsembly.Banking4"
end
