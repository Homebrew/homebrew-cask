cask "sparkmailapp" do
  version "3.0.31.37642"
  sha256 "303e2edf608c3996eaf72137e57dc8085be70adffbc046a8cb300caeaee2b50c"

  url "https://downloads.sparkmailapp.com/Spark3/mac/dist/#{version}/Spark.zip"
  name "Spark Mail"
  desc "Fast, cross-platform email designed to filter out the noise - so you can focus on what's important"
  homepage "https://sparkmailapp.com/"

  livecheck do
    url "https://sparkmailapp.com/download"
    regex(%r{Spark3/mac/dist/(\d+(?:\.\d+)*)/Spark\.zip})
  end

  app "Spark Desktop.app"
end
