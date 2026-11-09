cask "dynamodb-local" do
  version "2026-10-14"
  sha256 "7a94eb65f81aee270738751a4e5e3e6a7ad02a5d25194f55b83e08ec2ba6342b"

  url "https://d1ni2b6xgvw0s0.cloudfront.net/v2.x/dynamodb_local_#{version}.tar.gz"
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

  command_wrapper "dynamodb-local",
                  executable: "java",
                  args:       [
                    "-Djava.library.path=#{staged_path}/DynamoDBLocal_lib",
                    "-jar",
                    "#{staged_path}/DynamoDBLocal.jar",
                  ]

  zap :not_required

  caveats do
    depends_on_java "17+"
  end
end
