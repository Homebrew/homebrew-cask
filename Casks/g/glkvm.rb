cask "glkvm" do
  version "1.3.0,1765244166600,release1"
  sha256 "0af45164cda49a10aea78556fd7b5c5655ec84b4d51e72eb177b6169600c877c"

  url "https://static.gl-inet.com/edge-app/kvm-mac/#{version.csv.first}#{"-#{version.csv.third}" if version.csv.third}/#{version.csv.second}/gl-kvm-#{version.csv.first}.dmg"
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

  app "GLKVM.app"

  zap trash: [
    "~/Library/Application Support/gl-kvm",
    "~/Library/Logs/gl-kvm",
  ]

  caveats do
    requires_rosetta
  end
end
