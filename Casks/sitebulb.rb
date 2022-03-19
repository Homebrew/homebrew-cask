cask "sitebulb" do
  version "5.5"
  sha256 "e154a2300ac406b8fd611e8a4e1b22634a01f3be1a0e8c2ad46c7ccc49d022fb"

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  name "Sitebulb"
  desc "Website auditing tool"
  homepage "https://sitebulb.com/"

  livecheck do
    url "https://sitebulb.com/download/"
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/macOS/Sitebulb\.dmg}i)
  end

  app "Sitebulb.app"
end
