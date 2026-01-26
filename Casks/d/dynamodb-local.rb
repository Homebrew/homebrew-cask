cask "dynamodb-local" do
  version "2026-01-18"
  sha256 "c05dc320f4f9a6f90c6597bc4dc7239ab8200a6df0f280d9cbe4d5775943f898"

  url "https://d1ni2b6xgvw0s0.cloudfront.net/v2.x/dynamodb_local_#{version}.tar.gz",
      verified: "d1ni2b6xgvw0s0.cloudfront.net/"
  name "Amazon DynamoDB Local"
  desc "Development tool for DynamoDB"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html"

  livecheck do
    url "https://d1ni2b6xgvw0s0.cloudfront.net/"
    regex(/dynamodb[._-]local[._-]v?(\d+(?:[.-]\d+)+)\.t/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//Contents/Key").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/dynamodb-local.wrapper.sh"
  binary shimscript, target: "dynamodb-local"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      cd "$(dirname "$(readlink -n "${0}")")" && \
        exec java -Djava.library.path='./DynamoDBLocal_lib' -jar 'DynamoDBLocal.jar' "$@"
    EOS
  end

  # No zap stanza required

  caveats do
    depends_on_java "17+"
  end
end
