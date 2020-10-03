cask "geekbench" do
  if MacOS.version <= :sierra
    version "4.4.2"
    sha256 "3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc"
  else
    version "5.2.4"
    sha256 "c75e5d47d4b6ca5efe6e41807685144d8a30bc947a96b9dfb7599583834a0d66"
  end

  url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
  appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
  name "Geekbench"
  desc "Tool to measure the computer system's performance"
  homepage "https://www.geekbench.com/"

  auto_updates true

  app "Geekbench #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
    "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
  ]
end
