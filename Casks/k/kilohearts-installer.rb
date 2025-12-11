cask "kilohearts-installer" do
  version "2.4.5"
  sha256 :no_check

  url "https://kilohearts.com/data/install/_/mac"
  name "Kilohearts Installer"
  desc "Administration tool for Kilohearts products"
  homepage "https://kilohearts.com/download/"

  livecheck do
    url :homepage
    regex(/v?(\d+(?:\.\d+)+)\s+for\s+Mac/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Kilohearts Installer.app"

  zap trash: "/Library/Application Support/Kilohearts"
end
