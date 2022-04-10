cask "gdevelop" do
  def major_version
    "5"
  end

  version "5.0.131"
  sha256 "be81dc06ba56333cffb95ff86ea64066b1acbddb09ddd2f74a841759e9a00b53"

  url "https://github.com/4ian/GDevelop/releases/download/v#{version}/GDevelop-#{major_version}-#{version}.dmg",
    verified: "github.com/4ian/GDevelop/"

  name "GDevelop"
  desc "An open-source, cross-platform game engine designed to be used by everyone"
  homepage "https://gdevelop.io"

  app "GDevelop #{major_version}.app"
end
