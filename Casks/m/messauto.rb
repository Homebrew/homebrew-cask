cask "messauto" do
  version "1.1.5"

  on_arm do
    sha256 "b046cfa7fdb6556136ab696402275e54f8b9fe773feaee4b20267dcf19a3ca4e"
    url "https://github.com/LeeeSe/MessAuto/releases/download/v#{version}/MessAuto_#{version}_aarch64.app.tar.gz"
  end
  on_intel do
    sha256 "cc5e4f36d0fce57caccd639675dde1ca4e9b0fd93047f8eeda66c97d06c2e75e"
    url "https://github.com/LeeeSe/MessAuto/releases/download/v#{version}/MessAuto_#{version}_x64.app.tar.gz"
  end

  name "MessAuto"
  desc "Automatic extraction of 2FA codes from iMassage and Mail App"
  homepage "https://github.com/LeeeSe/MessAuto"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  artifact ".", target: "/Applications/MessAuto.app"

  zap trash: "~/Library/Application Support/messauto"
end
