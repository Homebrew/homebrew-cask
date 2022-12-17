cask "packetsender" do
  version "8.0.9,8.0.9"
  sha256 "918248c5f25797992cd77ca4dbda1b9c9935bfa8ce0cf803ffe8d9713db6385c"

  url "https://github.com/dannagle/PacketSender/releases/download/v#{version.csv.first}/PacketSender_v#{version.csv.second}.dmg",
      verified: "github.com/dannagle/PacketSender/"
  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  livecheck do
    url "https://github.com/dannagle/PacketSender/releases/latest"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)*)/PacketSender_v?(\d+(?:\.\d+)*)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :sierra"

  app "PacketSender.app"
end
