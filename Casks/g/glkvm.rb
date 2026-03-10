cask "glkvm" do
  version "1.4.0,1772531687978,release2"
  sha256 "250a730385a68c10324d4b1b22befd3d322bf374d42352753159378d96794c93"

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

  depends_on macos: ">= :big_sur"

  app "GLKVM.app"

  zap trash: [
    "~/Library/Application Support/gl-kvm",
    "~/Library/Logs/gl-kvm",
  ]
end
