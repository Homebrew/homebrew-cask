class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-1.2.1.tar.gz"
  sha256 "a8248ab589b38a322b83bb77c03e752e32f2e6b83b4a9030affd0f5825c6da27"
  license ""

  on_linux do
    depends_on "xsel"
  end

  def install
	if OS.linux?
		bin.install "pieces-linux" => "pieces"
	else
		bin.install "pieces-mac" => "pieces"
	end
  end
end

