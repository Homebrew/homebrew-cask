cask "glaze" do
  arch arm: "arm64", intel: "Intel"

  on_arm do
    version "2.1"
    sha256 "8fe831d650ffb4c8cf425bb77bb529148756e850368fff19315e8457c0fdbdde"
  end
  on_intel do
    version "2.1"
    sha256 "34546f93a98625cfad6a215c7274acdacb365f8d666e338219af02465ff7ba94"

    depends_on macos: ">= :ventura"
  end

  url "https://mirror.cs.uchicago.edu/fawkes/files/glaze/Glaze-#{version}-#{arch}.dmg"
  name "Glaze"
  desc "Art style AI mimicry disruptor"
  homepage "https://glaze.cs.uchicago.edu/index.html"

  livecheck do
    url "https://glaze.cs.uchicago.edu/downloads.html"
    regex(/href=.*?Glaze[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "Glaze.app"

  zap trash: "~/.glaze"
end
