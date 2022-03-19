cask "kryoflux" do
  version "3.00"
  sha256 "39674e173d3c4532118edbfff3804d6399512172890169e41d381c8bb7a58c7f"

  url "https://www.kryoflux.com/download/kryoflux_#{version}_macosx.dmg"
  name "KryoFlux"
  desc "Host Software - DiskTool Console (dtc) and UI"
  homepage "https://www.kryoflux.com/"

  livecheck do
    url "https://www.kryoflux.com/?page=download"
    regex(%r{href=.*?/kryoflux[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg}i)
  end

  app "KryoFlux UI.app"
  pkg "KryoFlux.pkg"

  uninstall pkgutil: "com.kryoflux.pkg.DTC"

  zap trash: [
    "~/.kryoflux",
    "~/Library/Preferences/com.kryoflux.kryoflux-ui.plist",
    "~/Library/Preferences/com.kryoflux.ui.plist",
  ]

  caveats do
    files_in_usr_local
  end
end
