cask "glkvm" do
  version "1.5.0,1782704518562,release1"
  sha256 "5223d52f61a88e154e9233cf6e87f75baa5e5d3e8325e924f56b0b544771853d"

  url "https://static.gl-inet.com/edge-app-staging/kvm-mac/#{version.csv.first}#{"-#{version.csv.third}" if version.csv.third}/#{version.csv.second}/gl-kvm-#{version.csv.first}#{"-#{version.csv.third}" if version.csv.third}.dmg"
  name "GLKVM"
  desc "App for controlling GL.iNet KVM devices"
  homepage "https://www.gl-inet.com/app-rm/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)(?:[._-](release\d*))?/(\d+(?:\.\d+)*)/gl-kvm[^"' >]*\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1] ? "#{match[0]},#{match[2]},#{match[1]}" : "#{match[0]},#{match[2]}"
      end
    end
  end

  depends_on macos: :big_sur

  app "GLKVM.app"

  zap trash: [
    "~/Library/Application Support/gl-kvm",
    "~/Library/Logs/gl-kvm",
  ]
end
