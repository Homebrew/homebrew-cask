cask "laravel-kit" do
  version "2.0.2"
  sha256 "94d070b2d394ea3bd50d053b4175a1ae7ad864b374d0865aea811aa40ceba971"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  name "Laravel Kit"
  desc "Desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  auto_updates true

  app "Laravel Kit.app"
end
