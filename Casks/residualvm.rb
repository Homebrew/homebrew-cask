cask "residualvm" do
  version "0.3.1"
  sha256 "298b4e8277a216647e2e3a9c5f54329ca53423bc95be5e870288eacdbdf574f5"

  url "https://www.residualvm.org/downloads/release/#{version}/residualvm-#{version}-macosx-intel64.dmg"
  name "ResidualVM"
  homepage "https://www.residualvm.org/"

  livecheck do
    url "https://www.residualvm.org/downloads/"
    strategy :page_match
    regex(%r{href=.*?/residualvm-(\d+(?:\.\d+)*)-macosx-intel64\.dmg}i)
  end

  app "ResidualVM.app"
end
