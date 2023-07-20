cask "herd" do
  version "1.0.8"
  sha256 "39a709014c361a1b63bb5fde2a43b9bd55c0256e2582f19851bb1fdae6ce8658"

  url "https://download.herdphp.com/app_versions/Herd_#{version.major_minor_patch}.dmg",
      verified: "download.herdphp.com/app_versions/"
  name "Laravel Herd"
  desc "Laravel development perfected - One click PHP development environment"
  homepage "https://herd.laravel.com/"

  livecheck do
    url "https://herd.laravel.com/api/versions"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Herd.app"

  uninstall delete: [
              "/etc/sudoers.d/herd",
            ],
            quit:   "Herd.app"

  zap trash: "~/Library/Application Support/Herd"
end
