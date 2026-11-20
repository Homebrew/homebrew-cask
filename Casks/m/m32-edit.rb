cask "m32-edit" do
  version "4.4.1,936caeda1eaa4bf388c329a4b4d651f1"
  sha256 "6c508f2160d4a34f9d124e503e66263d726f3258b492c590c2beb69aa4fc5f22"

  url "https://cdn-media.empowertribe.com/#{version.csv.second}/M32-Edit_MAC_#{version.csv.first}.zip"
  name "M32 Edit"
  desc "Remote control for Midas M32 audio consoles"
  homepage "https://www.midasconsoles.com/en/products/0603-AEO"

  livecheck do
    url :homepage, header: "RSC: 1"
    regex(%r{/(\h+)/M32[._-]Edit[._-]MAC[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  app "M32-Edit.app"

  zap trash: "~/Library/.M32-Edit"
end
