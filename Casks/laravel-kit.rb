cask "laravel-kit" do
  version "1.2.4"
  sha256 "d732b6ede3957d01cd0a119327643f5f7cecd4156d4420abc60ade6776d908f8"

  # github.com/tmdh/laravel-kit/ was verified as official when first introduced to the cask
  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip"
  appcast "https://github.com/tmdh/laravel-kit/releases.atom"
  name "Laravel Kit"
  desc "Desktop app for executing Laravel artisan commands"
  homepage "https://tmdh.github.io/laravel-kit"

  auto_updates true

  app "Laravel Kit.app"
end
