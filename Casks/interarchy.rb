cask "interarchy" do
  version "10.0.7"
  sha256 "c1f8fbb9add4d134123d72b80d1d04540d38157f7c51478cb9efb0e88138c090"

  url "https://downloads.kangacode.com/Interarchy/Interarchy_#{version}.zip"
  name "Interarchy"
  homepage "https://www.kangacode.com/interarchy/"

  livecheck do
    url "https://www.kangacode.com/interarchy/"
    strategy :page_match
    regex(%r{href=.*?/Interarchy_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Interarchy.app"
end
