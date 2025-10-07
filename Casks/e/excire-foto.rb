cask "excire-foto" do
  arch arm: "arm64", intel: "x64"

  version "4.1.0"
  sha256 arm:   "a820d919e3685b6f0584d1e4afa3f7699dff9d7a88de228c409a5d883d74a4d5",
         intel: "6d35ac44fda06e20b32ed7d6976a2372a12aab6b3ab2e38298901d60fea42983"

  url "https://www.excire.com/downloads/excire-foto/ExcireFoto-#{version}-#{arch}.dmg.zip"
  name "Excire Foto"
  desc "Photo library manager with object recognition, search, and culling tools"
  homepage "https://excire.com/en/excire-foto/"

  livecheck do
    url "https://api.excire.com/v2/app_version?product=ExcireFoto2025&platform=darwin&arch=#{arch}&lang=0&current_version=#{version}&current_version_hash=00000000"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "Install.pkg"

  uninstall pkgutil: "prc.excire.foto"

  zap trash: "~/Library/Application Support/excire-foto"
end
