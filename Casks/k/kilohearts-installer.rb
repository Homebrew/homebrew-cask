cask "kilohearts-installer" do
  version "2.4.1"
  sha256 :no_check

  url "https://kilohearts.com/data/install/_/mac"
  name "Kilohearts Installer"
  desc "Administration tool for Kilohearts products"
  homepage "https://kilohearts.com/download/"

  livecheck do
    url :homepage
    regex(/v?(\d+(?:\.\d+)+)\s+for\s+Mac/i)
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Kilohearts Installer.app"

  zap trash: "/Library/Application Support/Kilohearts"
end
