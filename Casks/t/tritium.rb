cask "tritium" do
  version "0.2.25"

  on_arm do
    sha256 "c13d46084897237235f5be3c3c331b007d78d493f9ddf546d1b57b500d12bc7c"

    url "https://tritium.legal/static/releases/tritium-macos-arm64.#{version}.zip"
  end
  on_intel do
    sha256 "e9639e3c4681ce85f852fbac48e2eeee5ba51296dbfec57c200d59b76237ab80"

    url "https://tritium.legal/static/releases/tritium-macos-x64.#{version}.zip"
  end

  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    skip "No reliable version information available"
  end

  depends_on macos: ">= :big_sur"

  app "tritium.app"
end
