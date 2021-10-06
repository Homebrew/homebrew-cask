cask "shift" do
  version "7.2.2"
  sha256 "3667bd2c1e76ac6d0877b2f1c82ccc560cbf825db009e6d7a72dd0619408dce1"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  livecheck do
    url "https://tryshift.com/download/?platform=mac"
    regex(%r{href=.*?version/(\d+(?:[._-]\d+)+)[._-]stable/osx[._-]64}i)
  end

  app "Shift.app"
end
