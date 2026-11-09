cask "plover" do
  version "5.4.2"
  sha256 "541e161657808dd9d0290fea3088404a6c39f5450502e1c1ee326102dd171d68"

  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/plover-#{version}-macosx_26_0_universal2.dmg"
  name "Plover"
  desc "Stenotype engine"
  homepage "https://opensteno.org/plover/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+[\w.]+)/i)
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Plover.app"

  zap trash: "~/Library/Application Support/plover"
end
