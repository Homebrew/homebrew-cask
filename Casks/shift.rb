cask "shift" do
  version "7.1.15"
  sha256 "c74a2e69eb68a108a9df1f199982c190f1c66332c7925984a43f854adc93940b"

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
