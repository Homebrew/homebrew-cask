cask "shift" do
  version "7.2.12"
  sha256 "ffd04321c11454896feb97e01e8d1ad034c79dcd4f2afbadcf3f3a7460501bd6"

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
