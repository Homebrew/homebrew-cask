cask "touch-portal" do
  arch arm: "M1"

  version "4.4,4"
  sha256 :no_check

  url "https://www.touch-portal.com/downloads/releases/mac/TouchPortalMacRelease#{arch}.dmg"
  name "Touch Portal"
  desc "Macro remote control"
  homepage "https://www.touch-portal.com/"

  livecheck do
    url :homepage
    regex(/v?(\d+(?:\.\d+)+).*?Build\s+(\d+)/i)
    strategy :page_match do |page, regex|
      page&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :el_capitan"

  app "TouchPortal.app"

  uninstall pkgutil: "org.eclipse.jdt.internal.jarinjarloader"

  zap trash: "~/Documents/TouchPortal"
end
