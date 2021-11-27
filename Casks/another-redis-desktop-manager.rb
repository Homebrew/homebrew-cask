cask "another-redis-desktop-manager" do
  version "1.5.0"

  if Hardware::CPU.intel?
    sha256 "ef3f82d87064d2c4673285647732878070bbdf709db25a84a099b01ae918660a"

    url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  else
    sha256 "00a5dd87fa8915d1ae96d1b70a33a056efdd79711561773ca208ec71ca72a29e"

    url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager-M1-arm64-#{version}.dmg"
  end

  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end
