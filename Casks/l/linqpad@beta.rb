cask "linqpad@beta" do
  version "8.106.5.5602133"
  sha256 "6eec41f272f1d6c6e2309d57b93ccc2f2eab14f856fd405db8f7c7789dcb34ea"

  url "https://linqpad.azureedge.net/preview/LINQPad8-Beta.dmg?cache=#{version}",
      verified: "linqpad.azureedge.net/"
  name "LINQPad"
  desc ".NET LINQ database query tool and code scratchpad"
  homepage "https://www.linqpad.net/"

  livecheck do
    url "https://www.linqpad.net/GetFile.aspx?preview+LINQPad8-Beta.dmg"
    strategy :header_match
  end

  auto_updates true
  depends_on arch: :arm64

  app "LINQPad 8 beta.app"

  zap trash: [
    "~/Library/Application Support/.LINQPad",
    "~/Library/Application Support/LINQPad",
    "~/LINQPad/Settings",
  ]

  caveats do
    license "https://www.linqpad.net/eula.txt"
    <<~EOS
      #{@cask} requires .NET 8.0 or later. You can install the latest version with:
        brew install --cask dotnet
    EOS
  end
end
