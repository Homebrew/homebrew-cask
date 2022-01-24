cask "interarchy" do
  version "10.0.7"
  sha256 "c1f8fbb9add4d134123d72b80d1d04540d38157f7c51478cb9efb0e88138c090"

  url "https://downloads.kangacode.com/Interarchy/Interarchy_#{version}.zip"
  name "Interarchy"
  desc "File fransfer tool"
  homepage "https://www.kangacode.com/interarchy/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Interarchy[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "Interarchy.app"
end
